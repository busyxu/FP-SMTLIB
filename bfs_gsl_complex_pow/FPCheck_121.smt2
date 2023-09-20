(declare-fun x1_ack!818 () (_ BitVec 64))
(declare-fun x2_ack!816 () (_ BitVec 64))
(declare-fun y2_ack!817 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!815 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!818) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!816) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!816) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y2_ack!817) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!815)
          ((_ to_fp 11 53) #x7fc0000000000000))))

(check-sat)
(exit)
