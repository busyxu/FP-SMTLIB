(declare-fun b_ack!1347 () (_ BitVec 64))
(declare-fun a_ack!1348 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!1348) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!1348)))
(assert (not (= #x00000000 a_ack!1348)))
(assert (= #x00000001 a_ack!1348))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1347))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1347))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.abs ((_ to_fp 11 53) b_ack!1347))))

(check-sat)
(exit)
