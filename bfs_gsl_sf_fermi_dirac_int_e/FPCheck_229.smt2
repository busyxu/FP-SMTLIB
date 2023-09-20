(declare-fun a_ack!730 () (_ BitVec 32))
(declare-fun b_ack!729 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!730 #xffffffff)))
(assert (not (= #xffffffff a_ack!730)))
(assert (not (= #x00000000 a_ack!730)))
(assert (= #x00000001 a_ack!730))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!729) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!729) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!729) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!729))
  #xbff0000000000000))

(check-sat)
(exit)
