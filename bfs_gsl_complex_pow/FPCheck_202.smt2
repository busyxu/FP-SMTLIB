(declare-fun x1_ack!1379 () (_ BitVec 64))
(declare-fun x2_ack!1377 () (_ BitVec 64))
(declare-fun y2_ack!1378 () (_ BitVec 64))
(declare-fun y1_ack!1376 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1377) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1377) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1379))
             (fp.abs ((_ to_fp 11 53) y1_ack!1376)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) y1_ack!1376))
  (fp.abs ((_ to_fp 11 53) y1_ack!1376))))

(check-sat)
(exit)
