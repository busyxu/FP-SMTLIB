(declare-fun x1_ack!468 () (_ BitVec 64))
(declare-fun y1_ack!465 () (_ BitVec 64))
(declare-fun x2_ack!466 () (_ BitVec 64))
(declare-fun y2_ack!467 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x1_ack!468) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!465) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!466) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!466) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y2_ack!467) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!468)
          ((_ to_fp 11 53) #x7ff0000000000001))
  #x7ff0000000000001))

(check-sat)
(exit)
