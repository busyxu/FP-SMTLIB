(declare-fun limit_ack!311 () (_ BitVec 64))
(declare-fun epsabs_ack!316 () (_ BitVec 64))
(declare-fun epsrel_ack!310 () (_ BitVec 64))
(declare-fun a_ack!317 () (_ BitVec 64))
(declare-fun x1_ack!312 () (_ BitVec 64))
(declare-fun x2_ack!313 () (_ BitVec 64))
(declare-fun x3_ack!314 () (_ BitVec 64))
(declare-fun b_ack!315 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!311)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!316) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!310)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!310)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!312) ((_ to_fp 11 53) a_ack!317))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!313) ((_ to_fp 11 53) x1_ack!312))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!314) ((_ to_fp 11 53) x2_ack!313))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!315) ((_ to_fp 11 53) x3_ack!314))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!317)
          ((_ to_fp 11 53) x1_ack!312))))

(check-sat)
(exit)
