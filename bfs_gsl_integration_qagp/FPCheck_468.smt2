(declare-fun limit_ack!7062 () (_ BitVec 64))
(declare-fun epsabs_ack!7067 () (_ BitVec 64))
(declare-fun a_ack!7068 () (_ BitVec 64))
(declare-fun x1_ack!7063 () (_ BitVec 64))
(declare-fun x2_ack!7064 () (_ BitVec 64))
(declare-fun x3_ack!7065 () (_ BitVec 64))
(declare-fun b_ack!7066 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7062)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!7067)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7063) ((_ to_fp 11 53) a_ack!7068))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7064) ((_ to_fp 11 53) x1_ack!7063))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7065) ((_ to_fp 11 53) x2_ack!7064))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7066) ((_ to_fp 11 53) x3_ack!7065))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7068)
                                   ((_ to_fp 11 53) x1_ack!7063))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7063)
                                   ((_ to_fp 11 53) a_ack!7068)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7068)
                    ((_ to_fp 11 53) x1_ack!7063)))
    a!1)))

(check-sat)
(exit)
