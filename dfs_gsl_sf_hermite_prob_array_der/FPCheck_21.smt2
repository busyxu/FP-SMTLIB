(declare-fun b_ack!131 () (_ BitVec 32))
(declare-fun a_ack!133 () (_ BitVec 32))
(declare-fun c_ack!132 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!131 #x00000000)))
(assert (not (bvslt a_ack!133 #x00000000)))
(assert (= #x00000000 a_ack!133))
(assert (not (bvslt b_ack!131 #x00000000)))
(assert (not (= #x00000000 b_ack!131)))
(assert (not (= #x00000001 b_ack!131)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!132))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!131))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!132))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!132))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!131))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!132)
                                   ((_ to_fp 11 53) c_ack!132))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!132))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!132))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!132)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!132)
                                   ((_ to_fp 11 53) c_ack!132))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53) c_ack!132)))))

(check-sat)
(exit)
