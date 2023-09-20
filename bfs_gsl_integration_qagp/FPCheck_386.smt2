(declare-fun limit_ack!5837 () (_ BitVec 64))
(declare-fun epsabs_ack!5842 () (_ BitVec 64))
(declare-fun a_ack!5843 () (_ BitVec 64))
(declare-fun x1_ack!5838 () (_ BitVec 64))
(declare-fun x2_ack!5839 () (_ BitVec 64))
(declare-fun x3_ack!5840 () (_ BitVec 64))
(declare-fun b_ack!5841 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5837)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5842)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5838) ((_ to_fp 11 53) a_ack!5843))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5839) ((_ to_fp 11 53) x1_ack!5838))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5840) ((_ to_fp 11 53) x2_ack!5839))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5841) ((_ to_fp 11 53) x3_ack!5840))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5843)
                                   ((_ to_fp 11 53) x1_ack!5838))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5838)
                                   ((_ to_fp 11 53) a_ack!5843)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5843)
                                   ((_ to_fp 11 53) x1_ack!5838)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
