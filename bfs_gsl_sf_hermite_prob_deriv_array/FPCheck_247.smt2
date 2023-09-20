(declare-fun b_ack!1570 () (_ BitVec 32))
(declare-fun a_ack!1572 () (_ BitVec 32))
(declare-fun c_ack!1571 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!1570 #x00000000)))
(assert (not (bvslt a_ack!1572 #x00000000)))
(assert (not (= #x00000000 b_ack!1570)))
(assert (not (= #x00000001 b_ack!1570)))
(assert (not (= #x00000000 a_ack!1572)))
(assert (not (= #x00000001 a_ack!1572)))
(assert (not (bvslt (bvsub b_ack!1570 a_ack!1572) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1570 a_ack!1572) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1570 a_ack!1572))))
(assert (not (= #x00000001 (bvsub b_ack!1570 a_ack!1572))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1571) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1571))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1570 a_ack!1572)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1571))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 (bvsub b_ack!1570 a_ack!1572)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1571)
                                   ((_ to_fp 11 53) c_ack!1571))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1571))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_OVERFLOW
  c_ack!1571
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!1571)
                  ((_ to_fp 11 53) c_ack!1571))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
