(declare-fun a_ack!1498 () (_ BitVec 32))
(declare-fun b_ack!1496 () (_ BitVec 32))
(declare-fun c_ack!1497 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1498 #x00000000)))
(assert (not (bvslt b_ack!1496 a_ack!1498)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1497) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!1496)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1497) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1497) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1497) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!1497) ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!1497))
                           ((_ to_fp 11 53) #x4022000000000000))
                   ((_ to_fp 11 53) #x401c000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!1)
            ((_ to_fp 11 53) #xbff0000000000000))
    #x3ff0000000000000)))

(check-sat)
(exit)
