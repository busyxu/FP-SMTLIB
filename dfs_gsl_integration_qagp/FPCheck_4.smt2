(declare-fun limit_ack!82 () (_ BitVec 64))
(declare-fun epsabs_ack!87 () (_ BitVec 64))
(declare-fun epsrel_ack!81 () (_ BitVec 64))
(declare-fun a_ack!88 () (_ BitVec 64))
(declare-fun x1_ack!83 () (_ BitVec 64))
(declare-fun x2_ack!84 () (_ BitVec 64))
(declare-fun x3_ack!85 () (_ BitVec 64))
(declare-fun b_ack!86 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!82)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!87) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!81)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!81)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!83) ((_ to_fp 11 53) a_ack!88))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!84) ((_ to_fp 11 53) x1_ack!83))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!85) ((_ to_fp 11 53) x2_ack!84))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!86) ((_ to_fp 11 53) x3_ack!85))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!88)
          ((_ to_fp 11 53) x1_ack!83))))

(check-sat)
(exit)
