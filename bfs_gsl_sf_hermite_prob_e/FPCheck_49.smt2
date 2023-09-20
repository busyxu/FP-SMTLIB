(declare-fun a_ack!188 () (_ BitVec 32))
(declare-fun b_ack!187 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!188 #x00000000)))
(assert (not (= #x00000000 a_ack!188)))
(assert (not (= #x00000001 a_ack!188)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!187) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!187))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!188))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!187))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!187))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!187))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!187))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
  (FPCHECK_FADD_OVERFLOW a!1 #x3cb0000000000000)))

(check-sat)
(exit)
