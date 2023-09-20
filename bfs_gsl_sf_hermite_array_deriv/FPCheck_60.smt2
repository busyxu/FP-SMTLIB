(declare-fun b_ack!335 () (_ BitVec 32))
(declare-fun a_ack!337 () (_ BitVec 32))
(declare-fun c_ack!336 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!335 #x00000000)))
(assert (not (bvslt a_ack!337 #x00000000)))
(assert (= #x00000000 a_ack!337))
(assert (not (bvslt b_ack!335 #x00000000)))
(assert (not (= #x00000000 b_ack!335)))
(assert (not (= #x00000001 b_ack!335)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!336)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!335))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7feccccccccccccc)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!336))))))
  (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4000000000000000)
                         ((_ to_fp 11 53) c_ack!336)))
         a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!336))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!336))))

(check-sat)
(exit)
