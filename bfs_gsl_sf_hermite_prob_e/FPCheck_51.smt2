(declare-fun a_ack!192 () (_ BitVec 32))
(declare-fun b_ack!191 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!192 #x00000000)))
(assert (not (= #x00000000 a_ack!192)))
(assert (not (= #x00000001 a_ack!192)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!191) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!191))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!192))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!191))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!191))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!191))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!191))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
  (FPCHECK_FADD_ACCURACY a!1 #x3cb0000000000000)))

(check-sat)
(exit)
