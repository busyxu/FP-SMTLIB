(declare-fun b_ack!291 () (_ BitVec 32))
(declare-fun a_ack!293 () (_ BitVec 32))
(declare-fun c_ack!292 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!291 #x00000000)))
(assert (not (bvslt a_ack!293 #x00000000)))
(assert (not (= #x00000000 b_ack!291)))
(assert (not (= #x00000001 b_ack!291)))
(assert (= #x00000000 a_ack!293))
(assert (not (bvslt b_ack!291 #x00000000)))
(assert (not (= #x00000000 b_ack!291)))
(assert (not (= #x00000001 b_ack!291)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!292) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!292))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!291))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!292))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!292))))))
  (not a!1)))
(assert (not (bvslt #x00000002 b_ack!291)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) c_ack!292))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!292))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!292)
                                   ((_ to_fp 11 53) c_ack!292))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3cb0000000000000)))))

(check-sat)
(exit)
