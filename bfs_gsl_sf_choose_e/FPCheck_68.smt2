(declare-fun b_ack!200 () (_ BitVec 32))
(declare-fun a_ack!201 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!201 b_ack!200)))
(assert (not (= b_ack!200 a_ack!201)))
(assert (not (= #x00000000 b_ack!200)))
(assert (not (bvule a_ack!201 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!200) a_ack!201))
(assert (bvult (bvsub a_ack!201 (bvsub a_ack!201 b_ack!200)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!201 b_ack!200)) a_ack!201))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!201)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!201 (bvsub a_ack!201 b_ack!200))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!201 b_ack!200))
       (bvadd #xffffffff a_ack!201)))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvsub a_ack!201 (bvsub a_ack!201 b_ack!200)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!201)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!201 (bvsub a_ack!201 b_ack!200))))))
(let ((a!3 (fp.gt (fp.div roundNearestTiesToEven
                          ((_ to_fp_unsigned 11 53)
                            roundNearestTiesToEven
                            (bvadd #xffffffff a_ack!201))
                          a!1)
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7fefffffffffffff)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!2)))))
  (not a!3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!201)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!201 (bvsub a_ack!201 b_ack!200)))))
      (a!2 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvsub a_ack!201 (bvsub a_ack!201 b_ack!200))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.div roundNearestTiesToEven
            ((_ to_fp_unsigned 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffff a_ack!201))
            a!2))))

(check-sat)
(exit)
