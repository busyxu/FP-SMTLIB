(declare-fun b_ack!498 () (_ BitVec 64))
(declare-fun a_ack!499 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!498) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!499 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!498) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!499)))
(assert (not (= #x00000001 a_ack!499)))
(assert (= #x00000002 a_ack!499))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!498) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!498))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!498))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  #x3e93660f974707d5
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!498)
                  ((_ to_fp 11 53) b_ack!498))
          ((_ to_fp 11 53) #x3e208db48ebe51c7))))

(check-sat)
(exit)
