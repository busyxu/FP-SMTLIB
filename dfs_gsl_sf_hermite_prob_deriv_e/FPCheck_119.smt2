(declare-fun b_ack!669 () (_ BitVec 32))
(declare-fun a_ack!671 () (_ BitVec 32))
(declare-fun c_ack!670 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!669 #x00000000)))
(assert (not (bvslt a_ack!671 #x00000000)))
(assert (not (bvslt b_ack!669 a_ack!671)))
(assert (not (bvult b_ack!669 a_ack!671)))
(assert (not (= a_ack!671 b_ack!669)))
(assert (= #x00000000 a_ack!671))
(assert (bvult a_ack!671 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!671)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!671)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!669 a_ack!671) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!669 a_ack!671))))
(assert (not (= #x00000001 (bvsub b_ack!669 a_ack!671))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!670))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!669 a_ack!671)))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!670))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!670))))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!670)
          ((_ to_fp 11 53) c_ack!670))
  #x3ff0000000000000))

(check-sat)
(exit)
