(declare-fun a_ack!5545 () (_ BitVec 32))
(declare-fun b_ack!5543 () (_ BitVec 32))
(declare-fun c_ack!5544 () (_ BitVec 64))
(assert (not (bvslt a_ack!5545 #x00000000)))
(assert (not (bvslt b_ack!5543 a_ack!5545)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5544) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!5543))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5544) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!5544) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5544))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5544)
                       ((_ to_fp 11 53) c_ack!5544))
               ((_ to_fp 11 53) c_ack!5544))
       ((_ to_fp 11 53) c_ack!5544)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5544))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5544)
                       ((_ to_fp 11 53) c_ack!5544))
               ((_ to_fp 11 53) c_ack!5544))
       ((_ to_fp 11 53) c_ack!5544)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5544)
                           ((_ to_fp 11 53) c_ack!5544))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5544)
                           ((_ to_fp 11 53) c_ack!5544))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))

(check-sat)
(exit)
