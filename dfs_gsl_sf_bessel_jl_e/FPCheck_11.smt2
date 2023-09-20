(declare-fun a_ack!49 () (_ BitVec 32))
(declare-fun b_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!49 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!49))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!48)) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  #xbe5ae64567f544e4
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!48)
                  ((_ to_fp 11 53) b_ack!48))
          ((_ to_fp 11 53) #x3de6124613a86d09))))

(check-sat)
(exit)
