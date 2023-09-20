(declare-fun b_ack!1764 () (_ BitVec 32))
(declare-fun a_ack!1766 () (_ BitVec 32))
(declare-fun c_ack!1765 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1764 #x00000000)))
(assert (not (bvslt a_ack!1766 #x00000000)))
(assert (not (bvslt b_ack!1764 a_ack!1766)))
(assert (not (bvult b_ack!1764 a_ack!1766)))
(assert (not (= a_ack!1766 b_ack!1764)))
(assert (= #x00000000 a_ack!1766))
(assert (bvult a_ack!1766 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1766)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1766)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!1764 a_ack!1766) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1764 a_ack!1766))))
(assert (not (= #x00000001 (bvsub b_ack!1764 a_ack!1766))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1765) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1765))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1764 a_ack!1766)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1765))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!1765))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!1765))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
