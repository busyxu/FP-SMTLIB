(declare-fun b_ack!1981 () (_ BitVec 64))
(declare-fun a_ack!1982 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1981) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1982) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1981) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1981) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1982) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1981) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1982) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1981) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1982) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1981) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1982) ((_ to_fp 11 53) #x4034000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1982)
          ((_ to_fp 11 53) a_ack!1982))
  #x3fd0000000000000))

(check-sat)
(exit)
