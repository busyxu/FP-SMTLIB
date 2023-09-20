(declare-fun b_ack!1596 () (_ BitVec 32))
(declare-fun a_ack!1598 () (_ BitVec 32))
(declare-fun c_ack!1597 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1596 #x00000000)))
(assert (not (bvslt a_ack!1598 b_ack!1596)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1597) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1597) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1596)))
(assert (= #x00000000 b_ack!1596))
(assert (not (= a_ack!1598 b_ack!1596)))
(assert (not (= a_ack!1598 (bvadd #x00000001 b_ack!1596))))
(assert (bvsle (bvadd #x00000002 b_ack!1596) a_ack!1598))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000002 b_ack!1596))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000002 b_ack!1596 b_ack!1596)))
    a!1)))

(check-sat)
(exit)
