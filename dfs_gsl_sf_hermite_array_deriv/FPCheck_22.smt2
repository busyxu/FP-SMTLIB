(declare-fun b_ack!143 () (_ BitVec 32))
(declare-fun a_ack!145 () (_ BitVec 32))
(declare-fun c_ack!144 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!143 #x00000000)))
(assert (not (bvslt a_ack!145 #x00000000)))
(assert (= #x00000000 a_ack!145))
(assert (not (bvslt b_ack!143 #x00000000)))
(assert (not (= #x00000000 b_ack!143)))
(assert (not (= #x00000001 b_ack!143)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!144)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!143))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7feccccccccccccc)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!144))))))
(let ((a!2 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!144)))
                  a!1)))
  (not a!2))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!144))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!144))))

(check-sat)
(exit)
