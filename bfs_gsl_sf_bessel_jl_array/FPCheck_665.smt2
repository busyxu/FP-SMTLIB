(declare-fun a_ack!2151 () (_ BitVec 32))
(declare-fun b_ack!2150 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2151 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2150) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2150) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!2151) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2150) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2150) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!2151)))
(assert (not (= #x00000000 a_ack!2151)))
(assert (not (= #x00000001 a_ack!2151)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2151))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!2150)
                      ((_ to_fp 11 53) b_ack!2150))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!2151)
                           (bvadd #x00000001 a_ack!2151))
                    a_ack!2151))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!2150))
              (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (not (fp.gt ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000001 a_ack!2151))
            ((_ to_fp 11 53) #x407965fea53d6e3a))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2150) ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!2150)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    (bvmul (bvadd #x00000001 a_ack!2151)
                           (bvadd #x00000001 a_ack!2151))))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2151))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2150)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
