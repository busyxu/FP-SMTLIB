(declare-fun b_ack!1998 () (_ BitVec 32))
(declare-fun a_ack!2000 () (_ BitVec 32))
(declare-fun c_ack!1999 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1998 #x00000000)))
(assert (not (bvslt a_ack!2000 b_ack!1998)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1999) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1999) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1998)))
(assert (= #x00000000 b_ack!1998))
(assert (not (= a_ack!2000 b_ack!1998)))
(assert (not (= a_ack!2000 (bvadd #x00000001 b_ack!1998))))
(assert (bvsle (bvadd #x00000002 b_ack!1998) a_ack!2000))
(assert (bvsle (bvadd #x00000003 b_ack!1998) a_ack!2000))
(assert (bvsle (bvadd #x00000004 b_ack!1998) a_ack!2000))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000004 b_ack!1998 b_ack!1998))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x4010000000000000)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000004 b_ack!1998 b_ack!1998)))
    a!1)))

(check-sat)
(exit)
