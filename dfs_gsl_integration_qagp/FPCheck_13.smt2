(declare-fun limit_ack!242 () (_ BitVec 64))
(declare-fun epsabs_ack!247 () (_ BitVec 64))
(declare-fun epsrel_ack!241 () (_ BitVec 64))
(declare-fun a_ack!248 () (_ BitVec 64))
(declare-fun x1_ack!243 () (_ BitVec 64))
(declare-fun x2_ack!244 () (_ BitVec 64))
(declare-fun x3_ack!245 () (_ BitVec 64))
(declare-fun b_ack!246 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!242)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!247) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!241)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!241)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!243) ((_ to_fp 11 53) a_ack!248))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!244) ((_ to_fp 11 53) x1_ack!243))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!245) ((_ to_fp 11 53) x2_ack!244))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) x3_ack!245))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!248)
                  ((_ to_fp 11 53) x1_ack!243)))))

(check-sat)
(exit)
