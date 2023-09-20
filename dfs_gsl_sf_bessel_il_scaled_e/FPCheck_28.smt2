(declare-fun b_ack!96 () (_ BitVec 64))
(declare-fun a_ack!97 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!97 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!97))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!96))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!96))
            ((_ to_fp 11 53) #x403205966f2b4f12))))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) b_ack!96)))))

(check-sat)
(exit)
