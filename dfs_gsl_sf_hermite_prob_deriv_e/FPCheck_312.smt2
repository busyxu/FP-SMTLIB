(declare-fun b_ack!1758 () (_ BitVec 32))
(declare-fun a_ack!1760 () (_ BitVec 32))
(declare-fun c_ack!1759 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1758 #x00000000)))
(assert (not (bvslt a_ack!1760 #x00000000)))
(assert (not (bvslt b_ack!1758 a_ack!1760)))
(assert (not (bvult b_ack!1758 a_ack!1760)))
(assert (not (= a_ack!1760 b_ack!1758)))
(assert (= #x00000000 a_ack!1760))
(assert (bvult a_ack!1760 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1760)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1760)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!1758 a_ack!1760) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1758 a_ack!1760))))
(assert (not (= #x00000001 (bvsub b_ack!1758 a_ack!1760))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1759) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1759))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1758 a_ack!1760)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1759))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1759)
          ((_ to_fp 11 53) c_ack!1759))
  #x3ff0000000000000))

(check-sat)
(exit)
