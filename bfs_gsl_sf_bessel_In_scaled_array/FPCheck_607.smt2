(declare-fun a_ack!2597 () (_ BitVec 32))
(declare-fun b_ack!2595 () (_ BitVec 32))
(declare-fun c_ack!2596 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!2595 a_ack!2597)))
(assert (not (bvslt a_ack!2597 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2596) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2595)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2596))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) c_ack!2596))
               (fp.abs ((_ to_fp 11 53) c_ack!2596)))
       ((_ to_fp 11 53) #x41fd6e2bc3b82b06)))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!2596)))))

(check-sat)
(exit)
