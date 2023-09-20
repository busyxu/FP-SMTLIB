(declare-fun b_ack!202 () (_ BitVec 32))
(declare-fun a_ack!203 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!203 b_ack!202)))
(assert (not (= b_ack!202 a_ack!203)))
(assert (not (= #x00000000 b_ack!202)))
(assert (not (bvule a_ack!203 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!202) a_ack!203))
(assert (bvult (bvsub a_ack!203 (bvsub a_ack!203 b_ack!202)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!203 b_ack!202)) a_ack!203))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!203)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!203 (bvsub a_ack!203 b_ack!202))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!203 b_ack!202))
       (bvadd #xffffffff a_ack!203)))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvsub a_ack!203 (bvsub a_ack!203 b_ack!202)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!203)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!203 (bvsub a_ack!203 b_ack!202))))))
(let ((a!3 (fp.gt (fp.div roundNearestTiesToEven
                          ((_ to_fp_unsigned 11 53)
                            roundNearestTiesToEven
                            (bvadd #xffffffff a_ack!203))
                          a!1)
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7fefffffffffffff)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!2)))))
  (not a!3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!203)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!203 (bvsub a_ack!203 b_ack!202)))))
      (a!2 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvsub a_ack!203 (bvsub a_ack!203 b_ack!202))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.div roundNearestTiesToEven
            ((_ to_fp_unsigned 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffff a_ack!203))
            a!2))))

(check-sat)
(exit)
