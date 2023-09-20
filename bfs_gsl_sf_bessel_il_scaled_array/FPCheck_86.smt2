(declare-fun b_ack!319 () (_ BitVec 64))
(declare-fun a_ack!320 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!319) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!319) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!320) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!319) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!320)))
(assert (= #x00000000 a_ack!320))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!319) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!319))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!319))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  #x3ea937e11175f095
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!319)
                  ((_ to_fp 11 53) b_ack!319))
          ((_ to_fp 11 53) #x3e38d48ed61d7aab))))

(check-sat)
(exit)
