(declare-fun limit_ack!7202 () (_ BitVec 64))
(declare-fun a_ack!7203 () (_ BitVec 64))
(declare-fun b_ack!7198 () (_ BitVec 64))
(declare-fun epsabs_ack!7200 () (_ BitVec 64))
(declare-fun epsrel_ack!7201 () (_ BitVec 64))
(declare-fun c_ack!7199 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!7202)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7198) ((_ to_fp 11 53) a_ack!7203)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7200) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7201)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7201)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!7199) ((_ to_fp 11 53) a_ack!7203))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!7199) ((_ to_fp 11 53) b_ack!7198))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!7199))
                   ((_ to_fp 11 53) a_ack!7203))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!7198))
                 ((_ to_fp 11 53) b_ack!7198))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!7199))
                   ((_ to_fp 11 53) a_ack!7203))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!7198)))
         ((_ to_fp 11 53) b_ack!7198))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!7199))
                           ((_ to_fp 11 53) a_ack!7203))
                   ((_ to_fp 11 53) b_ack!7198))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7203)
                                   ((_ to_fp 11 53) b_ack!7198))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
