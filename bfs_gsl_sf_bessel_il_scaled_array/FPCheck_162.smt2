(declare-fun b_ack!591 () (_ BitVec 64))
(declare-fun a_ack!592 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!591) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!591) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!592) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!591) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!592)))
(assert (not (= #x00000000 a_ack!592)))
(assert (not (= #x00000001 a_ack!592)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!591))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!591)
                       ((_ to_fp 11 53) b_ack!591))
               ((_ to_fp 11 53) b_ack!591))
       ((_ to_fp 11 53) b_ack!591)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!591))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!591)
                       ((_ to_fp 11 53) b_ack!591))
               ((_ to_fp 11 53) b_ack!591))
       ((_ to_fp 11 53) b_ack!591)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!592))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!591)
                      ((_ to_fp 11 53) b_ack!591))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (not (bvslt (bvadd #x00000001 a_ack!592) #x00000096)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!592)
                            (bvadd #x00000001 a_ack!592)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!591)
            ((_ to_fp 11 53) b_ack!591)))))

(check-sat)
(exit)
