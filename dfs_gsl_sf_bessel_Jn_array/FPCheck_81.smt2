(declare-fun a_ack!380 () (_ BitVec 32))
(declare-fun b_ack!378 () (_ BitVec 32))
(declare-fun c_ack!379 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!380 #x00000000)))
(assert (not (bvslt b_ack!378 a_ack!380)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!378) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!378)))
(assert (= #x00000000 b_ack!378))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!379))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!379))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!379))
       ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (not (bvslt b_ack!378 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!378))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!379))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!379)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!379))
                           (fp.abs ((_ to_fp 11 53) c_ack!379)))
                   (fp.abs ((_ to_fp 11 53) c_ack!379)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!379)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!379)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!379))
                           (fp.abs ((_ to_fp 11 53) c_ack!379)))
                   (fp.abs ((_ to_fp 11 53) c_ack!379)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!379)))))
(assert (bvsle a_ack!380 b_ack!378))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub b_ack!378 a_ack!380)))
       #x0000000000000319))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) c_ack!379)))))

(check-sat)
(exit)
