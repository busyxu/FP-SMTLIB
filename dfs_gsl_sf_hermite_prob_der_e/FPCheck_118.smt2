(declare-fun b_ack!666 () (_ BitVec 32))
(declare-fun a_ack!668 () (_ BitVec 32))
(declare-fun c_ack!667 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!666 #x00000000)))
(assert (not (bvslt a_ack!668 #x00000000)))
(assert (not (bvslt b_ack!666 a_ack!668)))
(assert (not (bvult b_ack!666 a_ack!668)))
(assert (not (= a_ack!668 b_ack!666)))
(assert (= #x00000000 a_ack!668))
(assert (bvult a_ack!668 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!668)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!668)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!666 a_ack!668) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!666 a_ack!668))))
(assert (not (= #x00000001 (bvsub b_ack!666 a_ack!668))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!667) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!667))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!666 a_ack!668)))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!667))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!667))))))
  (not a!1)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!667)
          ((_ to_fp 11 53) c_ack!667))
  #x3ff0000000000000))

(check-sat)
(exit)
