(declare-fun b_ack!1675 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!1676 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_atan2
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1675) ((_ to_fp 11 53) #x404e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1675) ((_ to_fp 11 53) #xc04e000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1675))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1675))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))
                   (CF_exp b_ack!1675))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (CF_exp b_ack!1675)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_exp b_ack!1675)))))
  (fp.eq a!1 (CF_exp b_ack!1675))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven (CF_sin a_ack!1676) a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
  (fp.lt (fp.abs (fp.mul roundNearestTiesToEven (CF_sin a_ack!1676) a!1))
         (fp.abs (fp.mul roundNearestTiesToEven (CF_cos a_ack!1676) a!2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_sin a_ack!1676)
                                  a!1))
                  (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_cos a_ack!1676)
                                  a!2)))))
  (not a!3))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_sin a_ack!1676)
                                   a!1))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_cos a_ack!1676)
                                   a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         (fp.mul roundNearestTiesToEven a!3 a!3))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.mul roundNearestTiesToEven a!3 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_sin a_ack!1676)
                                   a!1))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_cos a_ack!1676)
                                   a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         (fp.mul roundNearestTiesToEven a!3 a!3))
                 (fp.mul roundNearestTiesToEven a!3 a!3))
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (CF_atan2 (fp.mul roundNearestTiesToEven (CF_cos a_ack!1676) a!1)
                     (fp.mul roundNearestTiesToEven (CF_sin a_ack!1676) a!2))))
(let ((a!4 (bvmul #x00000002
                  (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                       #x00000001
                       #xffffffff))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven a!4)
                   (CF_floor (fp.div roundNearestTiesToEven
                                     (fp.abs a!3)
                                     ((_ to_fp 11 53) #x401921fb54442d18))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x400921fb40000000)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3e84442d00000000)))))
(let ((a!7 (fp.gt (fp.sub roundNearestTiesToEven
                          a!6
                          (fp.mul roundNearestTiesToEven
                                  a!5
                                  ((_ to_fp 11 53) #x3d08469898cc5170)))
                  ((_ to_fp 11 53) #x400921fb54442d18))))
  (not a!7))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (CF_atan2 (fp.mul roundNearestTiesToEven (CF_cos a_ack!1676) a!1)
                     (fp.mul roundNearestTiesToEven (CF_sin a_ack!1676) a!2))))
(let ((a!4 (bvmul #x00000002
                  (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                       #x00000001
                       #xffffffff))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven a!4)
                   (CF_floor (fp.div roundNearestTiesToEven
                                     (fp.abs a!3)
                                     ((_ to_fp 11 53) #x401921fb54442d18))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x400921fb40000000)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3e84442d00000000)))))
(let ((a!7 (fp.lt (fp.sub roundNearestTiesToEven
                          a!6
                          (fp.mul roundNearestTiesToEven
                                  a!5
                                  ((_ to_fp 11 53) #x3d08469898cc5170)))
                  ((_ to_fp 11 53) #xc00921fb54442d18))))
  (not a!7))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (fp.abs (CF_atan2 (fp.mul roundNearestTiesToEven
                                     (CF_cos a_ack!1676)
                                     a!1)
                             (fp.mul roundNearestTiesToEven
                                     (CF_sin a_ack!1676)
                                     a!2)))))
  (not (fp.gt a!3 ((_ to_fp 11 53) #x42f0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (fp.abs (CF_atan2 (fp.mul roundNearestTiesToEven
                                     (CF_cos a_ack!1676)
                                     a!1)
                             (fp.mul roundNearestTiesToEven
                                     (CF_sin a_ack!1676)
                                     a!2)))))
  (not (fp.gt a!3 ((_ to_fp 11 53) #x4150000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (CF_atan2 (fp.mul roundNearestTiesToEven (CF_cos a_ack!1676) a!1)
                     (fp.mul roundNearestTiesToEven (CF_sin a_ack!1676) a!2))))
(let ((a!4 (bvmul #x00000002
                  (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                       #x00000001
                       #xffffffff))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven a!4)
                   (CF_floor (fp.div roundNearestTiesToEven
                                     (fp.abs a!3)
                                     ((_ to_fp 11 53) #x401921fb54442d18))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x400921fb40000000)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3e84442d00000000)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3d08469898cc5170)))
                   a!3)))
  (fp.lt (fp.abs a!7) ((_ to_fp 11 53) #x400921fb54442d18)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!1675)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!1675))))))
(let ((a!3 (CF_atan2 (fp.mul roundNearestTiesToEven (CF_cos a_ack!1676) a!1)
                     (fp.mul roundNearestTiesToEven (CF_sin a_ack!1676) a!2))))
(let ((a!4 (bvmul #x00000002
                  (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                       #x00000001
                       #xffffffff))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven a!4)
                   (CF_floor (fp.div roundNearestTiesToEven
                                     (fp.abs a!3)
                                     ((_ to_fp 11 53) #x401921fb54442d18))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x400921fb40000000)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3e84442d00000000)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3d08469898cc5170)))
                   a!3)))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!7)))))))))

(check-sat)
(exit)
