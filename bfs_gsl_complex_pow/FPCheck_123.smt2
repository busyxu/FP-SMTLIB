(declare-fun x1_ack!830 () (_ BitVec 64))
(declare-fun x2_ack!828 () (_ BitVec 64))
(declare-fun y2_ack!829 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y1_ack!827 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!830) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!828) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!828) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y2_ack!829) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y1_ack!827)
                  ((_ to_fp 11 53) #x7fc0000000000000)))
  #x7fc0000000000000))

(check-sat)
(exit)
