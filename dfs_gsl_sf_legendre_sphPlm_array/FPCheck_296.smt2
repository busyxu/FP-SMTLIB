(declare-fun b_ack!1614 () (_ BitVec 32))
(declare-fun a_ack!1616 () (_ BitVec 32))
(declare-fun c_ack!1615 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1614 #x00000000)))
(assert (not (bvslt a_ack!1616 b_ack!1614)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1615) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1615) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1614)))
(assert (= #x00000000 b_ack!1614))
(assert (not (= a_ack!1616 b_ack!1614)))
(assert (not (= a_ack!1616 (bvadd #x00000001 b_ack!1614))))
(assert (bvsle (bvadd #x00000002 b_ack!1614) a_ack!1616))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 b_ack!1614 b_ack!1614))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000002 b_ack!1614 b_ack!1614)))
    a!1)))

(check-sat)
(exit)
