(declare-fun b_ack!1620 () (_ BitVec 32))
(declare-fun a_ack!1622 () (_ BitVec 32))
(declare-fun c_ack!1621 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1620 #x00000000)))
(assert (not (bvslt a_ack!1622 b_ack!1620)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1621) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1621) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1620)))
(assert (= #x00000000 b_ack!1620))
(assert (not (= a_ack!1622 b_ack!1620)))
(assert (not (= a_ack!1622 (bvadd #x00000001 b_ack!1620))))
(assert (bvsle (bvadd #x00000002 b_ack!1620) a_ack!1622))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 b_ack!1620 b_ack!1620))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000002 b_ack!1620 b_ack!1620)))
    a!1)))

(check-sat)
(exit)
