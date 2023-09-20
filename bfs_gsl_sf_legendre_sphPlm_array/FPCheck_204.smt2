(declare-fun b_ack!954 () (_ BitVec 32))
(declare-fun a_ack!956 () (_ BitVec 32))
(declare-fun c_ack!955 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!954 #x00000000)))
(assert (not (bvslt a_ack!956 b_ack!954)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!955) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!955) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!954)))
(assert (= #x00000000 b_ack!954))
(assert (not (= a_ack!956 b_ack!954)))
(assert (not (= a_ack!956 (bvadd #x00000001 b_ack!954))))
(assert (bvsle (bvadd #x00000002 b_ack!954) a_ack!956))
(assert (bvsle (bvadd #x00000003 b_ack!954) a_ack!956))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000003 b_ack!954 b_ack!954))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000003 b_ack!954 b_ack!954)))
    a!1)))

(check-sat)
(exit)
