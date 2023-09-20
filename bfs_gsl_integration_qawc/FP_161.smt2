(declare-fun limit_ack!6020 () (_ BitVec 64))
(declare-fun a_ack!6021 () (_ BitVec 64))
(declare-fun b_ack!6016 () (_ BitVec 64))
(declare-fun epsabs_ack!6018 () (_ BitVec 64))
(declare-fun epsrel_ack!6019 () (_ BitVec 64))
(declare-fun c_ack!6017 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!6020)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6016) ((_ to_fp 11 53) a_ack!6021)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6018) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6019)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6019)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6017) ((_ to_fp 11 53) a_ack!6021))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6017) ((_ to_fp 11 53) b_ack!6016))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6017))
                   ((_ to_fp 11 53) a_ack!6021))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6016))
                 ((_ to_fp 11 53) b_ack!6016))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6017))
                   ((_ to_fp 11 53) a_ack!6021))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6016)))
         ((_ to_fp 11 53) b_ack!6016))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6017))
                           ((_ to_fp 11 53) a_ack!6021))
                   ((_ to_fp 11 53) b_ack!6016))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6021)
                                   ((_ to_fp 11 53) b_ack!6016))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
