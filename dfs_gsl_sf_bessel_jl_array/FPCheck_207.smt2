(declare-fun a_ack!845 () (_ BitVec 32))
(declare-fun b_ack!844 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!845 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!845) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!845)))
(assert (not (= #x00000000 a_ack!845)))
(assert (= #x00000001 a_ack!845))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!844))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!844))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (not (bvslt a_ack!845 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!845)))
(assert (= #x00000001 a_ack!845))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!844))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!844))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!845))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!845))
       #x0000000000000319))
(assert (bvsle #x00000001 a_ack!845))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!844)
                                   ((_ to_fp 11 53) b_ack!844)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 (CF_sin b_ack!844))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (CF_cos b_ack!844))
                           ((_ to_fp 11 53) b_ack!844)))))
  (FPCHECK_FSUB_ACCURACY
    #x8000000000000000
    (fp.div roundNearestTiesToEven a!2 ((_ to_fp 11 53) b_ack!844))))))

(check-sat)
(exit)
