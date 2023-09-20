(declare-fun x1_ack!540 () (_ BitVec 64))
(declare-fun y1_ack!537 () (_ BitVec 64))
(declare-fun x2_ack!538 () (_ BitVec 64))
(declare-fun y2_ack!539 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x1_ack!540) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!537) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!538) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!538) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y2_ack!539) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y1_ack!537)
                  ((_ to_fp 11 53) #x7ff0000000000001)))
  #x7ff0000000000001))

(check-sat)
(exit)
