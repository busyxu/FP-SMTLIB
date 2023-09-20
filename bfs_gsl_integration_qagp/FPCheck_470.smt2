(declare-fun limit_ack!7090 () (_ BitVec 64))
(declare-fun epsabs_ack!7095 () (_ BitVec 64))
(declare-fun a_ack!7096 () (_ BitVec 64))
(declare-fun x1_ack!7091 () (_ BitVec 64))
(declare-fun x2_ack!7092 () (_ BitVec 64))
(declare-fun x3_ack!7093 () (_ BitVec 64))
(declare-fun b_ack!7094 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7090)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!7095)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7091) ((_ to_fp 11 53) a_ack!7096))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7092) ((_ to_fp 11 53) x1_ack!7091))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7093) ((_ to_fp 11 53) x2_ack!7092))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7094) ((_ to_fp 11 53) x3_ack!7093))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7096)
                                   ((_ to_fp 11 53) x1_ack!7091))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7091)
                                   ((_ to_fp 11 53) a_ack!7096)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7096)
                    ((_ to_fp 11 53) x1_ack!7091)))
    a!1)))

(check-sat)
(exit)
