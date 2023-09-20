(declare-fun a_ack!3250 () (_ BitVec 32))
(declare-fun b_ack!3248 () (_ BitVec 32))
(declare-fun c_ack!3249 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!3250 #x00000000)))
(assert (not (bvslt b_ack!3248 a_ack!3250)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!3248)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3249) ((_ to_fp 11 53) #x4020000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4030000000000000)
                  ((_ to_fp 11 53) c_ack!3249))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
