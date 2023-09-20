(declare-fun b_ack!1701 () (_ BitVec 32))
(declare-fun a_ack!1703 () (_ BitVec 32))
(declare-fun c_ack!1702 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1701 #x00000000)))
(assert (not (bvslt a_ack!1703 b_ack!1701)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1702) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1702) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1701)))
(assert (= #x00000000 b_ack!1701))
(assert (not (= a_ack!1703 b_ack!1701)))
(assert (not (= a_ack!1703 (bvadd #x00000001 b_ack!1701))))
(assert (bvsle (bvadd #x00000002 b_ack!1701) a_ack!1703))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53)
            roundNearestTiesToEven
            (bvadd #x00000001 b_ack!1701 b_ack!1701))
          ((_ to_fp 11 53) #x3fd20dd750429b6d))
  #x4001e3779b97f4a8))

(check-sat)
(exit)
