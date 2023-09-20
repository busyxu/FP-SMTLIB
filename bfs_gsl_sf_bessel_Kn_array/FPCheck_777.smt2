(declare-fun a_ack!3052 () (_ BitVec 32))
(declare-fun b_ack!3050 () (_ BitVec 32))
(declare-fun c_ack!3051 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!3052 #x00000000)))
(assert (not (bvslt b_ack!3050 a_ack!3052)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!3050))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3051) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!3051) ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4030000000000000)
                  ((_ to_fp 11 53) c_ack!3051))
          ((_ to_fp 11 53) #x4022000000000000))
  #x401c000000000000))

(check-sat)
(exit)
