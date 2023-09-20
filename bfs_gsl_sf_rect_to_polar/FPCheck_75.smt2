(declare-fun a_ack!244 () (_ BitVec 64))
(declare-fun b_ack!243 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) a_ack!244) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!244))
       (fp.abs ((_ to_fp 11 53) b_ack!243))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!244))
            (fp.abs ((_ to_fp 11 53) b_ack!243)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!243))
       ((_ to_fp 11 53) #x7fefffffffffffff)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!243))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cc0000000000000
  (fp.abs (CF_atan2 b_ack!243 a_ack!244))))

(check-sat)
(exit)
