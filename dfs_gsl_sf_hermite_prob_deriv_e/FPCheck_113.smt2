(declare-fun b_ack!636 () (_ BitVec 32))
(declare-fun a_ack!638 () (_ BitVec 32))
(declare-fun c_ack!637 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!636 #x00000000)))
(assert (not (bvslt a_ack!638 #x00000000)))
(assert (not (bvslt b_ack!636 a_ack!638)))
(assert (not (bvult b_ack!636 a_ack!638)))
(assert (not (= a_ack!638 b_ack!636)))
(assert (= #x00000000 a_ack!638))
(assert (bvult a_ack!638 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!638)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!638)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!636 a_ack!638) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!636 a_ack!638))))
(assert (not (= #x00000001 (bvsub b_ack!636 a_ack!638))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!637) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!637))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!636 a_ack!638)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!637))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feccccccccccccc)
               (fp.abs ((_ to_fp 11 53) c_ack!637)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!637))
          ((_ to_fp 11 53) #x3cb0000000000000))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!637))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
