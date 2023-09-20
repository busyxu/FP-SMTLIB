(declare-fun a_ack!217 () (_ BitVec 32))
(declare-fun b_ack!216 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!217 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!217) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!217)))
(assert (= #x00000000 a_ack!217))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!216))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!216))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  #x3ea937e11175f095
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!216)
                  ((_ to_fp 11 53) b_ack!216))
          ((_ to_fp 11 53) #xbe38d48ed61d7aab))))

(check-sat)
(exit)
