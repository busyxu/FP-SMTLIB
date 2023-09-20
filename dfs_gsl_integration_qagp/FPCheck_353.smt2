(declare-fun limit_ack!5994 () (_ BitVec 64))
(declare-fun epsabs_ack!5999 () (_ BitVec 64))
(declare-fun epsrel_ack!5993 () (_ BitVec 64))
(declare-fun a_ack!6000 () (_ BitVec 64))
(declare-fun x1_ack!5995 () (_ BitVec 64))
(declare-fun x2_ack!5996 () (_ BitVec 64))
(declare-fun x3_ack!5997 () (_ BitVec 64))
(declare-fun b_ack!5998 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5994)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5999) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5993)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5993)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5995) ((_ to_fp 11 53) a_ack!6000))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5996) ((_ to_fp 11 53) x1_ack!5995))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5997) ((_ to_fp 11 53) x2_ack!5996))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5998) ((_ to_fp 11 53) x3_ack!5997))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6000)
                                   ((_ to_fp 11 53) x1_ack!5995))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5995)
                  ((_ to_fp 11 53) a_ack!6000)))
  #x3fe8fc7574fa6c62))

(check-sat)
(exit)
