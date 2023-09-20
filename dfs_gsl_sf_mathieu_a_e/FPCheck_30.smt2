(declare-fun n_ack!134 () (_ BitVec 32))
(declare-fun a_ack!135 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!134 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!134 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!134 #x00000000)))
(assert (= #x00000000 n_ack!134))
(assert (fp.leq ((_ to_fp 11 53) a_ack!135) ((_ to_fp 11 53) #x4010000000000000)))
(assert (= #x00000000 n_ack!134))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!134)
  #x4059000000000000))

(check-sat)
(exit)
