(declare-fun limit_ack!6884 () (_ BitVec 64))
(declare-fun a_ack!6885 () (_ BitVec 64))
(declare-fun b_ack!6880 () (_ BitVec 64))
(declare-fun epsabs_ack!6882 () (_ BitVec 64))
(declare-fun epsrel_ack!6883 () (_ BitVec 64))
(declare-fun c_ack!6881 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!6884)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6880) ((_ to_fp 11 53) a_ack!6885)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6882) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6883)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6883)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6881) ((_ to_fp 11 53) a_ack!6885))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6881) ((_ to_fp 11 53) b_ack!6880))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6881))
                   ((_ to_fp 11 53) a_ack!6885))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6880))
                 ((_ to_fp 11 53) b_ack!6880))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6881))
                   ((_ to_fp 11 53) a_ack!6885))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6880)))
         ((_ to_fp 11 53) b_ack!6880))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6881))
                           ((_ to_fp 11 53) a_ack!6885))
                   ((_ to_fp 11 53) b_ack!6880))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6885)
                                   ((_ to_fp 11 53) b_ack!6880))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
