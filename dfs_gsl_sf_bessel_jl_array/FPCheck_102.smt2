(declare-fun a_ack!409 () (_ BitVec 32))
(declare-fun b_ack!408 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!409 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!409) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!409)))
(assert (not (= #x00000000 a_ack!409)))
(assert (= #x00000001 a_ack!409))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!408))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!408))
       ((_ to_fp 11 53) #x3ff4cccccccccccd)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3c9e76d4fa744d95
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!408)
                  ((_ to_fp 11 53) b_ack!408))
          ((_ to_fp 11 53) #xbc12d6775460a6b3))))

(check-sat)
(exit)
