(declare-fun a_ack!1573 () (_ BitVec 32))
(declare-fun b_ack!1571 () (_ BitVec 32))
(declare-fun c_ack!1572 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1573 #x00000000)))
(assert (not (bvslt b_ack!1571 a_ack!1573)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1572) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1573 #x00000000)))
(assert (not (= #x00000000 a_ack!1573)))
(assert (not (= #x00000001 a_ack!1573)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1572) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1572) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvule (bvadd #xffffffff a_ack!1573) #x000000aa)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53)
            roundNearestTiesToEven
            (bvadd #xffffffff a_ack!1573))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
