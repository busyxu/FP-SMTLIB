(declare-fun b_ack!1563 () (_ BitVec 32))
(declare-fun a_ack!1565 () (_ BitVec 32))
(declare-fun c_ack!1564 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1563 #x00000000)))
(assert (not (bvslt a_ack!1565 b_ack!1563)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1564) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1564) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1563)))
(assert (= #x00000000 b_ack!1563))
(assert (not (= a_ack!1565 b_ack!1563)))
(assert (not (= a_ack!1565 (bvadd #x00000001 b_ack!1563))))
(assert (bvsle (bvadd #x00000002 b_ack!1563) a_ack!1565))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000002 b_ack!1563 b_ack!1563))))

(check-sat)
(exit)
