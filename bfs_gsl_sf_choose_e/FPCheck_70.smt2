(declare-fun b_ack!204 () (_ BitVec 32))
(declare-fun a_ack!205 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!205 b_ack!204)))
(assert (not (= b_ack!204 a_ack!205)))
(assert (not (= #x00000000 b_ack!204)))
(assert (not (bvule a_ack!205 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!204) a_ack!205))
(assert (bvult (bvsub a_ack!205 (bvsub a_ack!205 b_ack!204)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!205 b_ack!204)) a_ack!205))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!205)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!205 (bvsub a_ack!205 b_ack!204))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!205 b_ack!204))
       (bvadd #xffffffff a_ack!205)))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvsub a_ack!205 (bvsub a_ack!205 b_ack!204)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!205)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!205 (bvsub a_ack!205 b_ack!204))))))
(let ((a!3 (fp.gt (fp.div roundNearestTiesToEven
                          ((_ to_fp_unsigned 11 53)
                            roundNearestTiesToEven
                            (bvadd #xffffffff a_ack!205))
                          a!1)
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7fefffffffffffff)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!2)))))
  (not a!3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!205)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!205 (bvsub a_ack!205 b_ack!204)))))
      (a!2 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvsub a_ack!205 (bvsub a_ack!205 b_ack!204))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.div roundNearestTiesToEven
            ((_ to_fp_unsigned 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffff a_ack!205))
            a!2))))

(check-sat)
(exit)
