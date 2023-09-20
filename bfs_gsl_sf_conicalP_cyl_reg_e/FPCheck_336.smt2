(declare-fun c_ack!1452 () (_ BitVec 64))
(declare-fun a_ack!1453 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1452) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1453 #xffffffff)))
(assert (not (= #xffffffff a_ack!1453)))
(assert (not (= #x00000000 a_ack!1453)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1452)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1452)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
