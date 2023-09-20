(declare-fun b_ack!880 () (_ BitVec 32))
(declare-fun a_ack!882 () (_ BitVec 32))
(declare-fun c_ack!881 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!880 #x00000000)))
(assert (not (bvslt a_ack!882 #x00000000)))
(assert (= #x00000000 a_ack!882))
(assert (not (bvslt b_ack!880 #x00000000)))
(assert (not (= #x00000000 b_ack!880)))
(assert (not (= #x00000001 b_ack!880)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!881)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!880))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7feccccccccccccc)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!881))))))
(let ((a!2 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!881)))
                  a!1)))
  (not a!2))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!881))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!881)))
  #x4000000000000000))

(check-sat)
(exit)
